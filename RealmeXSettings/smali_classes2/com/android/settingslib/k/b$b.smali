.class final Lcom/android/settingslib/k/b$b;
.super La/d/b/e;
.source "ThemedBatteryDrawable.kt"

# interfaces
.implements La/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/k/b;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/e;",
        "La/d/a/a<",
        "La/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/k/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/k/b$b;->a:Lcom/android/settingslib/k/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/d/b/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/android/settingslib/k/b$b;->a:Lcom/android/settingslib/k/b;

    invoke-virtual {v0}, Lcom/android/settingslib/k/b;->invalidateSelf()V

    .line 40
    sget-object v0, La/g;->a:La/g;

    return-object v0
.end method
