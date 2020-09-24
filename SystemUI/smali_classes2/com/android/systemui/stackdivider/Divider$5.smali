.class Lcom/android/systemui/stackdivider/Divider$5;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Lcom/coloros/systemui/stackdivider/DividerMenu$DividerMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$5;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDividerMenuVisibilityChanged(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$5;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$5;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onDividerMenuVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
