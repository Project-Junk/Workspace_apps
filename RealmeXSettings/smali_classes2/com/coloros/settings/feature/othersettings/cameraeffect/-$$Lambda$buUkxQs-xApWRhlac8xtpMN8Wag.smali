.class public final synthetic Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;->INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$buUkxQs-xApWRhlac8xtpMN8Wag;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
