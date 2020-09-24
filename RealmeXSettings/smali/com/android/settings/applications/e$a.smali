.class final Lcom/android/settings/applications/e$a;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/e;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/e;Landroid/os/Looper;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    iget-object v0, v0, Lcom/android/settings/applications/e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 147
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 148
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 150
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 151
    iget-object v6, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, p1, :cond_1

    iget-object v6, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    iget-object v6, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    invoke-virtual {v6, v5, v3, p1}, Lcom/android/settings/applications/e;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    iget-object p1, p1, Lcom/android/settings/applications/e;->e:Lcom/android/settings/applications/e$c;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/e$c;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    invoke-virtual {p1}, Lcom/android/settings/applications/e;->a()V

    .line 142
    iget-object p1, p0, Lcom/android/settings/applications/e$a;->a:Lcom/android/settings/applications/e;

    iget-object p1, p1, Lcom/android/settings/applications/e;->e:Lcom/android/settings/applications/e$c;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/e$c;->sendEmptyMessage(I)Z

    return-void
.end method
