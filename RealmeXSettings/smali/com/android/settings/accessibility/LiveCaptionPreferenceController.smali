.class public Lcom/android/settings/accessibility/LiveCaptionPreferenceController;
.super Lcom/android/settings/core/a;
.source "LiveCaptionPreferenceController.java"


# static fields
.field static final LIVE_CAPTION_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.live_caption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 56
    sget-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
