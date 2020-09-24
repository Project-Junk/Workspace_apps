.class Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ColorLoadProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLoadProgress;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/ColorLoadProgress;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ColorLoadProgress;Lcom/color/support/widget/ColorLoadProgress$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;-><init>(Lcom/color/support/widget/ColorLoadProgress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 419
    iget-object p0, p0, Lcom/color/support/widget/ColorLoadProgress$AccessibilityEventSender;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLoadProgress;->sendAccessibilityEvent(I)V

    return-void
.end method
