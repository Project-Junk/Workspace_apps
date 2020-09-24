.class public final synthetic Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    iput-boolean p2, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$1:Z

    iput-object p3, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$1:Z

    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;->f$3:Z

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->lambda$createDialog$0$ColorQSSecurityText(ZLjava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
