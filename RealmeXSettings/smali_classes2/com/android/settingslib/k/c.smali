.class final Lcom/android/settingslib/k/c;
.super Ljava/lang/Object;
.source "ThemedBatteryDrawable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:La/d/a/a;


# direct methods
.method constructor <init>(La/d/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/c;->a:La/d/a/a;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/k/c;->a:La/d/a/a;

    invoke-interface {v0}, La/d/a/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
