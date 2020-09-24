.class Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "ColorNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 1803
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 1807
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1812
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->access$500(Lcom/color/support/widget/ColorNumberPicker;Z)V

    .line 1813
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$600(Lcom/color/support/widget/ColorNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
