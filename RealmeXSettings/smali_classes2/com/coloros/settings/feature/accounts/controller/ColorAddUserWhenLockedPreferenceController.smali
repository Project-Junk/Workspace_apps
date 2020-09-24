.class public Lcom/coloros/settings/feature/accounts/controller/ColorAddUserWhenLockedPreferenceController;
.super Lcom/android/settings/users/AddUserWhenLockedPreferenceController;
.source "ColorAddUserWhenLockedPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "add_users_when_locked"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "add_users_when_locked"

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
