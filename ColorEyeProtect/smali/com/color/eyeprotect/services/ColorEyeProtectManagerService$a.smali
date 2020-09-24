.class final Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;

.field private final g:Landroid/net/Uri;

.field private final h:Landroid/net/Uri;

.field private final i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "color_eyeprotect_enable"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->b:Landroid/net/Uri;

    const-string p1, "fix_time_state"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->c:Landroid/net/Uri;

    const-string p1, "eyeprotect_fix_time_change"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->d:Landroid/net/Uri;

    const-string p1, "color_eyeprotect_level"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->e:Landroid/net/Uri;

    const-string p1, "display_mode_change"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->f:Landroid/net/Uri;

    const-string p1, "OppoEyeprotect_level"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->g:Landroid/net/Uri;

    const-string p1, "oppo_color_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->h:Landroid/net/Uri;

    const-string p1, "setting_enable_color_temperature_regulation"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->i:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->b:Landroid/net/Uri;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on change"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(ZZ)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->f:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p0

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->d:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p2, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {p2}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/color/eyeprotect/util/e;->i(Landroid/content/ContentResolver;)I

    move-result p2

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->j(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {v1}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/e;->k(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->l(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(IIII)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->e:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)Landroid/content/ContentResolver;

    move-result-object p0

    const p2, 0x3f3051ca

    invoke-static {p0, p2}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;F)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->a(D)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->g:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;)F

    move-result p0

    float-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->b(D)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->h:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;->b(Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService$a;->i:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/a;->a()V

    :cond_8
    :goto_1
    return-void
.end method
