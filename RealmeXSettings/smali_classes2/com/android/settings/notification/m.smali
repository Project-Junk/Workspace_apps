.class public Lcom/android/settings/notification/m;
.super Lcom/android/settings/notification/q;
.source "NotificationRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/notification/q;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_ringtone"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/m;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
