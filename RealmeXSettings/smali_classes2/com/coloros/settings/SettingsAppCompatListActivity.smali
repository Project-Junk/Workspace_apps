.class public Lcom/coloros/settings/SettingsAppCompatListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsAppCompatListActivity.java"


# instance fields
.field protected a:Landroid/widget/ListAdapter;

.field protected b:Landroid/widget/ListView;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->d:Z

    .line 45
    new-instance v0, Lcom/coloros/settings/SettingsAppCompatListActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/SettingsAppCompatListActivity$1;-><init>(Lcom/coloros/settings/SettingsAppCompatListActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->e:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/coloros/settings/SettingsAppCompatListActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/SettingsAppCompatListActivity$2;-><init>(Lcom/coloros/settings/SettingsAppCompatListActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.internal.R.layout.list_content_simple"

    .line 92
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->setContentView(I)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->a()V

    .line 83
    iput-object p1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->a:Landroid/widget/ListAdapter;

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onContentChanged()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    const v0, 0x1020004

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    .line 60
    invoke-virtual {p0, v1}, Lcom/coloros/settings/SettingsAppCompatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    .line 61
    iget-object v1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-boolean v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->d:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity;->d:Z

    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
