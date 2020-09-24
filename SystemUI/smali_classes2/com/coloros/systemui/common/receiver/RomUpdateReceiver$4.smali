.class Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;
.super Landroid/os/AsyncTask;
.source "RomUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;->this$0:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    iput-object p2, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string p1, "Aod"

    const-string v0, "RomUpdateReceiver"

    const-string v1, "doInBackground: downloadAodDataFromFile AOD_SETTINGS_TILE_KEY "

    .line 113
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;->val$context:Landroid/content/Context;

    const-string p1, "sys_aod_prevent_burn_settings"

    invoke-static {p0, p1}, Lcom/coloros/systemui/aod/aodclock/util/AodUpdateUtils;->downloadAodDataFromFile(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
