.class Lcom/android/vendorsettings/wifi/bf;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFp:Lcom/android/vendorsettings/wifi/bd;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/bd;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/bf;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bf;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/bd;->a(Lcom/android/vendorsettings/wifi/bd;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    return-void
.end method