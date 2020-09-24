.class public final Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;
.super Ljava/lang/Object;
.source "ColorQSCarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorQSCarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorCarrierTextCallbackInfo"
.end annotation


# instance fields
.field public airplaneMode:Z

.field public final anySimReady:Z

.field public final carrierText:Ljava/lang/CharSequence;

.field public final dataUsage:Ljava/lang/String;

.field public final listOfCarriers:[Ljava/lang/CharSequence;

.field public final subscriptionIds:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 704
    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    .line 712
    iput-object p2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    .line 713
    iput-object p3, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    .line 714
    iput-boolean p4, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->anySimReady:Z

    .line 715
    iput-object p5, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->subscriptionIds:[I

    .line 716
    iput-boolean p6, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->airplaneMode:Z

    return-void
.end method
