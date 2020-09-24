.class Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$1;
.super Ljava/lang/Object;
.source "StatusBarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper$1;->this$0:Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method
