.class public Lcom/color/compat/app/AppOpsManagerNative;
.super Ljava/lang/Object;


# static fields
.field public static OP_GET_USAGE_STATS:I = 0x2b

.field public static OP_WRITE_SETTINGS:I = 0x17

.field private static final TAG:Ljava/lang/String; = "AppOpsManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/app/AppOpsManagerWrapper;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppOpsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
