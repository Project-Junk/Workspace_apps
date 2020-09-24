.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/fingerprint/Fingerprint;

.field b:Landroid/view/View;

.field private final c:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;)V
    .locals 0

    .line 864
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 865
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->c:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;

    const p1, 0x7f0d00a7

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->c:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$a;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0275

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 890
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 891
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->b:Landroid/view/View;

    .line 892
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->d:Landroid/view/View;

    .line 893
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->d:Landroid/view/View;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
