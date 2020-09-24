.class final Lcom/android/sdk/a$c;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/sdk/a;


# direct methods
.method public constructor <init>(Lcom/android/sdk/a;Landroid/os/Handler;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/sdk/a$c;->a:Lcom/android/sdk/a;

    .line 479
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 485
    iget-object p1, p0, Lcom/android/sdk/a$c;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->i()V

    return-void
.end method
