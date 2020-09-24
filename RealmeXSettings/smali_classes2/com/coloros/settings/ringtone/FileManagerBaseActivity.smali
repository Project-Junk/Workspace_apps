.class public Lcom/coloros/settings/ringtone/FileManagerBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FileManagerBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/oppo/c/a;->a(Landroid/content/Context;)V

    .line 30
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/oppo/c/a;->b(Landroid/content/Context;)V

    .line 24
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
