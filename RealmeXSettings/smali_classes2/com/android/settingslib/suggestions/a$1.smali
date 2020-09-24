.class final Lcom/android/settingslib/suggestions/a$1;
.super Ljava/lang/Object;
.source "SuggestionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/suggestions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/suggestions/a;


# direct methods
.method constructor <init>(Lcom/android/settingslib/suggestions/a;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    invoke-static {p2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;

    move-result-object p2

    .line 1037
    iput-object p2, p1, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    .line 161
    iget-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    .line 2037
    iget-object p1, p1, Lcom/android/settingslib/suggestions/a;->b:Lcom/android/settingslib/suggestions/a$a;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    .line 3037
    iget-object p1, p1, Lcom/android/settingslib/suggestions/a;->b:Lcom/android/settingslib/suggestions/a$a;

    .line 162
    invoke-interface {p1}, Lcom/android/settingslib/suggestions/a$a;->a()V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    .line 4037
    iget-object p1, p1, Lcom/android/settingslib/suggestions/a;->b:Lcom/android/settingslib/suggestions/a$a;

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/android/settingslib/suggestions/a$1;->a:Lcom/android/settingslib/suggestions/a;

    const/4 v0, 0x0

    .line 5037
    iput-object v0, p1, Lcom/android/settingslib/suggestions/a;->a:Landroid/service/settings/suggestions/ISuggestionService;

    .line 6037
    iget-object p1, p1, Lcom/android/settingslib/suggestions/a;->b:Lcom/android/settingslib/suggestions/a$a;

    .line 170
    invoke-interface {p1}, Lcom/android/settingslib/suggestions/a$a;->b()V

    :cond_0
    return-void
.end method
