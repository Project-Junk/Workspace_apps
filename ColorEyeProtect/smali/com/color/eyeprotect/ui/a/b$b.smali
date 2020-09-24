.class Lcom/color/eyeprotect/ui/a/b$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/ui/a/b;


# direct methods
.method public constructor <init>(Lcom/color/eyeprotect/ui/a/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-static {v0}, Lcom/color/eyeprotect/ui/a/b;->b(Lcom/color/eyeprotect/ui/a/b;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/color/eyeprotect/ui/a/b;->f()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-static {v0}, Lcom/color/eyeprotect/ui/a/b;->b(Lcom/color/eyeprotect/ui/a/b;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/eyeprotect/ui/a/b$b;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-static {p1}, Lcom/color/eyeprotect/ui/a/b;->c(Lcom/color/eyeprotect/ui/a/b;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-static {p2}, Lcom/color/eyeprotect/ui/a/b;->b(Lcom/color/eyeprotect/ui/a/b;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    iget-object p0, p0, Lcom/color/eyeprotect/ui/a/b$b;->a:Lcom/color/eyeprotect/ui/a/b;

    invoke-static {p0}, Lcom/color/eyeprotect/ui/a/b;->b(Lcom/color/eyeprotect/ui/a/b;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/ui/a/b;->a(Lcom/color/eyeprotect/ui/a/b;Ljava/lang/Boolean;)V

    return-void
.end method
