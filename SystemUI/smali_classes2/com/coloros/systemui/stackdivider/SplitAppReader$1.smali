.class Lcom/coloros/systemui/stackdivider/SplitAppReader$1;
.super Lcom/color/settings/ColorSettingsChangeListener;
.source "SplitAppReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/SplitAppReader;->registerSplitWindowFileChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/SplitAppReader;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/SplitAppReader;Landroid/os/Handler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader$1;->this$0:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    invoke-direct {p0, p2}, Lcom/color/settings/ColorSettingsChangeListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onSettingsChange(ZLjava/lang/String;I)V
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "split window file change, path = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StackDivider"

    const-string p3, "SplitAppReader"

    invoke-static {p2, p3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader$1;->this$0:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->access$000(Lcom/coloros/systemui/stackdivider/SplitAppReader;)V

    return-void
.end method
