.class Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;
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

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;->this$0:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    iput-object p2, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;->val$context:Landroid/content/Context;

    const-string p1, "sys_systemui_quicksettingstile_blacklist"

    invoke-static {p0, p1}, Lcom/coloros/systemui/provider/ProviderUtil;->downloadDataFromFile(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
