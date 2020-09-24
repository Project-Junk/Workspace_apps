.class public Lcom/color/compat/app/ActivityTaskManagerNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackInfo(II)Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/ActivityTaskManagerWrapper;->getStackInfo(II)Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;

    move-result-object p0

    new-instance p1, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;

    invoke-direct {p1, p0}, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;-><init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ActivityTaskManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
