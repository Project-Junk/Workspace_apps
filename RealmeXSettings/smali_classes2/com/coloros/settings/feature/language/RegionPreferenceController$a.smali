.class final Lcom/coloros/settings/feature/language/RegionPreferenceController$a;
.super Landroid/os/Handler;
.source "RegionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/RegionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/RegionPreferenceController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 114
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$100(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$200(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    .line 1062
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {p1}, Lcom/coloros/settings/feature/language/region/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/language/region/d;

    .line 1181
    iget-object v3, v2, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    .line 1067
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2059
    iget-object p1, v2, Lcom/coloros/settings/feature/language/region/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$300(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$300(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void
.end method
