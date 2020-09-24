.class public Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.super Lcom/android/settings/core/a;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/NfcPaymentPreference$a;
.implements Lcom/android/settings/nfc/e$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcPaymentController"


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;

.field private mPaymentBackend:Lcom/android/settings/nfc/e;

.field private mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/e;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/NfcPaymentPreference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    return-object p0
.end method

.method private updateSettingsVisibility()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 5133
    iget-object v0, v0, Lcom/android/settings/nfc/e;->d:Lcom/android/settings/nfc/e$b;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, v0, Lcom/android/settings/nfc/e$b;->e:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcPaymentPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 103
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    if-eqz p1, :cond_0

    .line 2053
    iput-object p0, p1, Lcom/android/settings/nfc/NfcPaymentPreference;->a:Lcom/android/settings/nfc/NfcPaymentPreference$a;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/android/settings/nfc/e;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 1129
    iget-object v0, v0, Lcom/android/settings/nfc/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 3133
    iget-object v0, v0, Lcom/android/settings/nfc/e;->d:Lcom/android/settings/nfc/e$b;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, v0, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x7f0a05ef

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 111
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateSettingsVisibility()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 4133
    iget-object p1, p1, Lcom/android/settings/nfc/e;->d:Lcom/android/settings/nfc/e$b;

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p1, Lcom/android/settings/nfc/e$b;->e:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object p1, p1, Lcom/android/settings/nfc/e$b;->e:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 156
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "NfcPaymentController"

    const-string v0, "Settings activity not found."

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPrepareDialogBuilder(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/e;->a(Lcom/android/settings/nfc/e$a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/e;->b(Lcom/android/settings/nfc/e$a;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/e;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 2129
    iget-object v0, v0, Lcom/android/settings/nfc/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/nfc/e$b;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/nfc/e$b;

    .line 123
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;

    .line 2190
    iput-object v0, v1, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a:[Lcom/android/settings/nfc/e$b;

    .line 2191
    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->notifyDataSetChanged()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateSettingsVisibility()V

    return-void
.end method
