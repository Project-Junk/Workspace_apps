.class public Lcom/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$a;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/nfc/NfcAdapter;

.field private c:Lcom/android/settings/widget/SwitchBar;

.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 104
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->d:Ljava/lang/CharSequence;

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->f:Z

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    goto :goto_1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->e:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    :goto_1
    const v0, 0x7f120171

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->b:Landroid/nfc/NfcAdapter;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->b:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120a88

    .line 68
    invoke-static {p2, p1, v1, v0}, Lcom/android/settingslib/c;->a(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_outgoing_beam"

    .line 75
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p3

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 78
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->e:Z

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->e:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 81
    new-instance p1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    .line 82
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeam;->f:Z

    .line 84
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const p3, 0x7f0d025e

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->a:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->a:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f080727

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->a:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f12016d

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->a:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->f:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p1

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->c:Lcom/android/settings/widget/SwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method
