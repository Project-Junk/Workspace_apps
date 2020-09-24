.class public Lcom/coloros/backup/sdk/utils/Constants$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# static fields
.field public static final CANCELLING:I = 0x4

.field public static final ERR_HAPPEN:I = 0x6

.field public static final FINISH:I = 0x5

.field public static final INIT:I = 0x0

.field public static final PAUSE:I = 0x2

.field public static final RUNNING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/utils/Constants;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/utils/Constants;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/utils/Constants$State;->this$0:Lcom/coloros/backup/sdk/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
