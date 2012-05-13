package Padre::Plugin::SpellCheck::FBP::Preferences;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008005;
use utf8;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '1.27';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Spelling preferences"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::DEFAULT_DIALOG_STYLE | Wx::RESIZE_BORDER,
	);

	$self->{chosen_dictionary} = Wx::RadioBox->new(
		$self,
		-1,
		Wx::gettext("Dictionary"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		[
			"Aspell",
			"Hunspell",
		],
		1,
		Wx::RA_SPECIFY_ROWS,
	);
	$self->{chosen_dictionary}->SetSelection(0);

	Wx::Event::EVT_RADIOBOX(
		$self,
		$self->{chosen_dictionary},
		sub {
			shift->on_dictionary_chosen(@_);
		},
	);

	$self->{language} = Wx::Choice->new(
		$self,
		-1,
		Wx::DefaultPosition,
		[ 220, -1 ],
		[],
	);
	$self->{language}->SetSelection(0);

	$self->{m_sdbSizer1_save} = Wx::Button->new(
		$self,
		Wx::ID_SAVE,
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{m_sdbSizer1_save},
		sub {
			shift->_on_button_save_clicked(@_);
		},
	);

	$self->{m_sdbSizer1_cancel} = Wx::Button->new(
		$self,
		Wx::ID_CANCEL,
	);

	$self->{sbSizer4} = Wx::StaticBoxSizer->new(
		Wx::StaticBox->new(
			$self,
			-1,
			Wx::gettext("Select Dictionary and Language"),
		),
		Wx::VERTICAL,
	);
	$self->{sbSizer4}->Add( $self->{chosen_dictionary}, 0, Wx::ALL | Wx::EXPAND, 5 );
	$self->{sbSizer4}->Add( $self->{language}, 0, Wx::ALL, 5 );

	$self->{m_sdbSizer1} = Wx::StdDialogButtonSizer->new;
	$self->{m_sdbSizer1}->AddButton( $self->{m_sdbSizer1_save} );
	$self->{m_sdbSizer1}->AddButton( $self->{m_sdbSizer1_cancel} );
	$self->{m_sdbSizer1}->Realize;

	my $bSizer1 = Wx::BoxSizer->new(Wx::VERTICAL);
	$bSizer1->Add( $self->{sbSizer4}, 1, Wx::ALL | Wx::EXPAND, 5 );
	$bSizer1->Add( $self->{m_sdbSizer1}, 0, Wx::ALL | Wx::EXPAND, 5 );

	$self->SetSizerAndFit($bSizer1);
	$self->Layout;

	return $self;
}

sub chosen_dictionary {
	$_[0]->{chosen_dictionary};
}

sub language {
	$_[0]->{language};
}

sub on_dictionary_chosen {
	$_[0]->main->error('Handler method on_dictionary_chosen for event chosen_dictionary.OnRadioBox not implemented');
}

sub _on_button_ok_clicked {
	$_[0]->main->error('Handler method _on_button_ok_clicked for event m_sdbSizer1.OnOKButtonClick not implemented');
}

sub _on_button_save_clicked {
	$_[0]->main->error('Handler method _on_button_save_clicked for event m_sdbSizer1.OnSaveButtonClick not implemented');
}

1;

# Copyright 2008-2012 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

