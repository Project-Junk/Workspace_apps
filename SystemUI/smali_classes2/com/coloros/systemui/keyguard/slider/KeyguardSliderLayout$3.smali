.class Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;
.super Ljava/lang/Object;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    .line 882
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurningOff()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    .line 886
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$3;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$302(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    return-void
.end method
