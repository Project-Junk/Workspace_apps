.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;
.super Ljava/lang/Object;
.source "EnvelopeHeadUpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventInfo"
.end annotation


# instance fields
.field mTime:J

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;FFJ)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mX:F

    .line 177
    iput p3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mY:F

    .line 178
    iput-wide p4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mTime:J

    return-void
.end method
