.class public Lcom/coloros/settings/feature/display/controller/AodConflictPreferenceController;
.super Lcom/android/settings/core/a;
.source "AodConflictPreferenceController.java"


# static fields
.field private static final KEY_AOD_CONFLICT:Ljava/lang/String; = "key_aod_conflict_tips"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_aod_conflict_tips"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/AodConflictPreferenceController;->isSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
