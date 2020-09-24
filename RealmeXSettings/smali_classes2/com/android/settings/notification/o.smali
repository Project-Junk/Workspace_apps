.class public Lcom/android/settings/notification/o;
.super Lcom/android/settings/notification/q;
.source "PhoneRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/notification/q;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ringtone"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/notification/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
