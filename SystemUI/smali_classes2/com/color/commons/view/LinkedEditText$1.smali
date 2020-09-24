.class Lcom/color/commons/view/LinkedEditText$1;
.super Ljava/lang/Object;
.source "LinkedEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/commons/view/LinkedEditText;->setLongClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/commons/view/LinkedEditText;


# direct methods
.method constructor <init>(Lcom/color/commons/view/LinkedEditText;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText$1;->this$0:Lcom/color/commons/view/LinkedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/color/commons/view/LinkedEditText$1;->this$0:Lcom/color/commons/view/LinkedEditText;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/color/commons/view/LinkedEditText;->access$002(Lcom/color/commons/view/LinkedEditText;Z)Z

    const/4 p0, 0x0

    return p0
.end method
