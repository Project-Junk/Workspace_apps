.class Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/helper/QSTileHostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;->this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PACKAGE changed pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "QSTileHostHelper"

    .line 160
    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.tencent.mm"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "weixinpay"

    .line 164
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "weixinscan"

    .line 165
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;->this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;

    invoke-virtual {v0, p2}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->removeTile(Ljava/util/ArrayList;)V

    :cond_0
    const-string p2, "com.eg.android.AlipayGphone"

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 169
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "aliscan"

    .line 170
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "alipay"

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;->this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;

    invoke-virtual {v0, p2}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->removeTile(Ljava/util/ArrayList;)V

    :cond_1
    const-string p2, "com.android.calculator2"

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.coloros.calculator"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;->this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;

    invoke-static {p0}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->access$000(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    const-string p1, "calculator"

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
