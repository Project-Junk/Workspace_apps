.class public final Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;
.super Landroid/service/quicksettings/TileService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;,
        Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$b;


# instance fields
.field private b:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$b;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;-><init>(Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;)V

    iput-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->b:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "application"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->p(Landroid/content/ContentResolver;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "application"

    invoke-static {p0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->g(Landroid/content/ContentResolver;Z)Z

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AutoScreenTemperatureTileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    iget-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->b:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;

    invoke-virtual {v0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a()V

    iget-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->b:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "application"

    invoke-static {p0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->p(Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a(Z)V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    iget-object p0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->b:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->b()V

    return-void
.end method
