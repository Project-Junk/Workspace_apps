.class public Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;
.super Landroidx/preference/Preference;
.source "ColorFingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1490
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1486
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1482
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1478
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 1495
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 1496
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 1504
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
