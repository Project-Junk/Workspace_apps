.class Lcom/android/systemui/stackdivider/Divider$3;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$exists:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$600(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->notifyDockedStackExistsChanged(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/coloros/systemui/stackdivider/DividerMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/coloros/systemui/stackdivider/DividerMenu;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->setDockedStackExistsState(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerView;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method