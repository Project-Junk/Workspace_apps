.class public final synthetic Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$T36w_ERrfEG-7ycvP-xKt-FQlew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$T36w_ERrfEG-7ycvP-xKt-FQlew;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$T36w_ERrfEG-7ycvP-xKt-FQlew;->f$0:Lcom/coloros/systemui/notification/base/NotificationInfoBase;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->lambda$adjustActionTextSize$3$NotificationInfoBase()V

    return-void
.end method