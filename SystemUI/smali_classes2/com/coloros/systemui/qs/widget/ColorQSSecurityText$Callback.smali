.class Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;
.super Ljava/lang/Object;
.source "ColorQSSecurityText.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->refreshState()V

    return-void
.end method
