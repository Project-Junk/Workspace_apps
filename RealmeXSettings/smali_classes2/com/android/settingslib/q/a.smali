.class final Lcom/android/settingslib/q/a;
.super Ljava/lang/Object;
.source "D.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "volume"

    const/4 v1, 0x3

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    return-void
.end method
