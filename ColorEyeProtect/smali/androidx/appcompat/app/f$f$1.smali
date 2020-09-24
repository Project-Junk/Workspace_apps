.class Landroidx/appcompat/app/f$f$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f$f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f$f;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$f$1;->a:Landroidx/appcompat/app/f$f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$f$1;->a:Landroidx/appcompat/app/f$f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$f;->b()V

    return-void
.end method
