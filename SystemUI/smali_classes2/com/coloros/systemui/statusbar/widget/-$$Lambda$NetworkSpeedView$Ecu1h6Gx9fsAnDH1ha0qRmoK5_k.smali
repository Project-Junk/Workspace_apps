.class public final synthetic Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$0:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$1:I

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$0:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$1:I

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;->f$3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->lambda$speedChanged$0$NetworkSpeedView(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
