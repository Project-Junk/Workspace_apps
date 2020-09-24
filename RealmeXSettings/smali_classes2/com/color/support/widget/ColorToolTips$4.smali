.class Lcom/color/support/widget/ColorToolTips$4;
.super Ljava/lang/Object;
.source "ColorToolTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorToolTips;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips$4;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$4;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorToolTips;->dismiss()V

    return-void
.end method
