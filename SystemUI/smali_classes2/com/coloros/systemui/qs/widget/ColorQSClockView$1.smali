.class Lcom/coloros/systemui/qs/widget/ColorQSClockView$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ColorQSClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/widget/ColorQSClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView;Landroid/content/Context;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSClockView;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->access$002(Lcom/coloros/systemui/qs/widget/ColorQSClockView;I)I

    return-void
.end method
