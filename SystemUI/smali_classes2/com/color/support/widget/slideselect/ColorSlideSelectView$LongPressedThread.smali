.class public Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;
.super Ljava/lang/Object;
.source "ColorSlideSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/slideselect/ColorSlideSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LongPressedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 309
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$502(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z

    return-void
.end method
