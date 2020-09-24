.class Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$5;
.super Ljava/lang/Object;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$5;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$5;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2402(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)I

    return-void
.end method
