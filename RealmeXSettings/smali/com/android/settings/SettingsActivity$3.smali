.class final Lcom/android/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->updateTilesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$3;->a:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$3;->a:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$200(Lcom/android/settings/SettingsActivity;)V

    return-void
.end method
