.class public final enum Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;
.super Ljava/lang/Enum;
.source "HandlerTaskTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/timer/HandlerTaskTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

.field public static final enum COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

.field public static final enum DELAY_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

.field public static final enum LOOP_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    const/4 v1, 0x0

    const-string v2, "COUNT_DOWN"

    invoke-direct {v0, v2, v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    .line 38
    new-instance v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    const/4 v2, 0x1

    const-string v3, "LOOP_EXECUTE"

    invoke-direct {v0, v3, v2}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->LOOP_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    .line 39
    new-instance v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    const/4 v3, 0x2

    const-string v4, "DELAY_EXECUTE"

    invoke-direct {v0, v4, v3}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->DELAY_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    sget-object v4, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->LOOP_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->DELAY_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->$VALUES:[Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;
    .locals 1

    .line 36
    const-class v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-object p0
.end method

.method public static values()[Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;
    .locals 1

    .line 36
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->$VALUES:[Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v0}, [Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-object v0
.end method
