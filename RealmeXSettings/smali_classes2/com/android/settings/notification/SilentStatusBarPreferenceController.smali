.class public Lcom/android/settings/notification/SilentStatusBarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SilentStatusBarPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "silent_icons"

.field private static final MY_USER_ID:I


# instance fields
.field private mBackend:Lcom/android/settings/notification/k;

.field private mListener:Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "silent_icons"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "new_interruption_model"

    const/4 v2, 0x1

    .line 62
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBackend(Lcom/android/settings/notification/k;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 53
    invoke-static {v0}, Lcom/android/settings/notification/k;->a(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mListener:Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;->onChange(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setListener(Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mListener:Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;

    return-void
.end method
