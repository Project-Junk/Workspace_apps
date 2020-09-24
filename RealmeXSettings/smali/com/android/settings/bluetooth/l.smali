.class public final Lcom/android/settings/bluetooth/l;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 39
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method
