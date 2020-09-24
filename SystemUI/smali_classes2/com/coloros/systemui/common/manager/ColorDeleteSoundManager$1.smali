.class Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;
.super Landroid/database/ContentObserver;
.source "ColorDeleteSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;->this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;->this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    invoke-static {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->access$000(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V

    return-void
.end method
