.class final Lcom/android/settings/a$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/a;


# direct methods
.method constructor <init>(Lcom/android/settings/a;Landroid/os/Handler;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/a$2;->a:Lcom/android/settings/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/android/settings/a$2;->a:Lcom/android/settings/a;

    .line 1035
    invoke-virtual {p1}, Lcom/android/settings/a;->c()V

    return-void
.end method
