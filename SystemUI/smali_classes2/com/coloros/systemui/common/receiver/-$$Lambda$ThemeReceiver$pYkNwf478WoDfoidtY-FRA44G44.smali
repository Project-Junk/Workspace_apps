.class public final synthetic Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;

    invoke-direct {v0}, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;->INSTANCE:Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->lambda$new$1(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
