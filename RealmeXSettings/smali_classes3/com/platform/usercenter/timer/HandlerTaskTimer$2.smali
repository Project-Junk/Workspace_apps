.class synthetic Lcom/platform/usercenter/timer/HandlerTaskTimer$2;
.super Ljava/lang/Object;
.source "HandlerTaskTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/timer/HandlerTaskTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 247
    invoke-static {}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->values()[Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    :try_start_0
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->LOOP_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->DELAY_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
