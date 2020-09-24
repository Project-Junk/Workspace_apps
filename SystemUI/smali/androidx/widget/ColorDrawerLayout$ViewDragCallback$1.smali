.class Landroidx/widget/ColorDrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "ColorDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/ColorDrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/widget/ColorDrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroidx/widget/ColorDrawerLayout$ViewDragCallback;)V
    .locals 0

    .line 2375
    iput-object p1, p0, Landroidx/widget/ColorDrawerLayout$ViewDragCallback$1;->this$1:Landroidx/widget/ColorDrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2378
    iget-object p0, p0, Landroidx/widget/ColorDrawerLayout$ViewDragCallback$1;->this$1:Landroidx/widget/ColorDrawerLayout$ViewDragCallback;

    invoke-virtual {p0}, Landroidx/widget/ColorDrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method
