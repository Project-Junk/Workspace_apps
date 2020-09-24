.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;
.super Ljava/lang/Object;
.source "ColorQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->restoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 586
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 587
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->showImmediately()V

    return-void
.end method
