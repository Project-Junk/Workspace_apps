.class public Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;
.super Ljava/lang/Object;
.source "ActivityTaskManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/app/ActivityTaskManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackInfoNative"
.end annotation


# instance fields
.field public taskNames:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public taskUserIds:[I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public userId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskNames:[Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->userId:I

    iput v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->userId:I

    .line 67
    iget-object p1, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskUserIds:[I

    iput-object p1, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskUserIds:[I

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;Lcom/color/compat/app/ActivityTaskManagerNative$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;-><init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;)V

    return-void
.end method
